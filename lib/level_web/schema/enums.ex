defmodule LevelWeb.Schema.Enums do
  @moduledoc false

  use Absinthe.Schema.Notation

  enum :user_state do
    value :active, as: "ACTIVE"
    value :disabled, as: "DISABLED"
  end

  enum :space_user_state do
    value :active, as: "ACTIVE"
    value :disabled, as: "DISABLED"
  end

  enum :space_user_role do
    value :member, as: "MEMBER"
    value :admin, as: "ADMIN"
    value :owner, as: "OWNER"
  end

  enum :space_user_order_field do
    value :space_name
    value :last_name
  end

  enum :space_state do
    value :active, as: "ACTIVE"
    value :disabled, as: "DISABLED"
  end

  enum :space_setup_state do
    value :create_groups
    value :invite_users
    value :complete
  end

  enum :post_state do
    value :open, as: "OPEN"
    value :closed, as: "CLOSED"
  end

  enum :post_subscription_state do
    value :not_subscribed, as: "NOT_SUBSCRIBED"
    value :subscribed, as: "SUBSCRIBED"
    value :unsubscribed, as: "UNSUBSCRIBED"
  end

  enum :user_order_field do
    value :last_name
  end

  enum :space_order_field do
    value :name
  end

  enum :invitation_order_field do
    value :email
  end

  enum :group_order_field do
    value :name
  end

  enum :group_membership_state do
    value :not_subscribed, as: "NOT_SUBSCRIBED"
    value :subscribed, as: "SUBSCRIBED"
  end

  enum :post_order_field do
    value :posted_at
  end

  enum :reply_order_field do
    value :posted_at
  end

  enum :mention_order_field do
    value :last_occurred_at
  end

  enum :order_direction do
    value(:asc)
    value(:desc)
  end

  enum :group_state do
    value :open, as: "OPEN"
    value :closed, as: "CLOSED"
  end
end
