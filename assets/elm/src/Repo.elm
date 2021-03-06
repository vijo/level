module Repo
    exposing
        ( Repo
        , init
        , getGroup
        , getGroups
        , setGroup
        , getSpace
        , getSpaces
        , setSpace
        , getSpaceUser
        , getSpaceUsers
        , setSpaceUser
        , getPost
        , getPosts
        , setPost
        )

import Data.Group as Group exposing (Group)
import Data.Post as Post exposing (Post)
import Data.Space as Space exposing (Space)
import Data.SpaceUser as SpaceUser exposing (SpaceUser)
import IdentityMap exposing (IdentityMap)


type Repo
    = Repo Internal


type alias Internal =
    { groups : IdentityMap Group.Record
    , spaceUsers : IdentityMap SpaceUser.Record
    , spaces : IdentityMap Space.Record
    , posts : IdentityMap Post.Record
    }


init : Repo
init =
    Repo (Internal emptyMap emptyMap emptyMap emptyMap)


emptyMap : IdentityMap a
emptyMap =
    IdentityMap.init



-- GROUPS


getGroup : Repo -> Group -> Group.Record
getGroup (Repo { groups }) group =
    IdentityMap.get groups .id (Group.getCachedData group)


getGroups : Repo -> List Group -> List Group.Record
getGroups (Repo { groups }) list =
    List.map Group.getCachedData list
        |> IdentityMap.getList groups .id


setGroup : Repo -> Group -> Repo
setGroup (Repo repo) group =
    Repo { repo | groups = IdentityMap.set repo.groups .id (Group.getCachedData group) }



-- SPACES


getSpace : Repo -> Space -> Space.Record
getSpace (Repo { spaces }) space =
    IdentityMap.get spaces .id (Space.getCachedData space)


getSpaces : Repo -> List Space -> List Space.Record
getSpaces (Repo { spaces }) list =
    List.map Space.getCachedData list
        |> IdentityMap.getList spaces .id


setSpace : Repo -> Space -> Repo
setSpace (Repo repo) space =
    Repo { repo | spaces = IdentityMap.set repo.spaces .id (Space.getCachedData space) }



-- USERS


getSpaceUser : Repo -> SpaceUser -> SpaceUser.Record
getSpaceUser (Repo { spaceUsers }) user =
    IdentityMap.get spaceUsers .id (SpaceUser.getCachedData user)


getSpaceUsers : Repo -> List SpaceUser -> List SpaceUser.Record
getSpaceUsers (Repo { spaceUsers }) list =
    List.map SpaceUser.getCachedData list
        |> IdentityMap.getList spaceUsers .id


setSpaceUser : Repo -> SpaceUser -> Repo
setSpaceUser (Repo repo) user =
    Repo { repo | spaceUsers = IdentityMap.set repo.spaceUsers .id (SpaceUser.getCachedData user) }



-- POSTS


getPost : Repo -> Post -> Post.Record
getPost (Repo { posts }) post =
    IdentityMap.get posts .id (Post.getCachedData post)


getPosts : Repo -> List Post -> List Post.Record
getPosts (Repo { posts }) list =
    List.map Post.getCachedData list
        |> IdentityMap.getList posts .id


setPost : Repo -> Post -> Repo
setPost (Repo repo) post =
    Repo { repo | posts = IdentityMap.set repo.posts .id (Post.getCachedData post) }
