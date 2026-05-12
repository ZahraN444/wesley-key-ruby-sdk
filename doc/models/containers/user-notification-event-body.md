
# User Notification Event Body

## Data Type

`UserActionNotificationEvent | UserStatusNotificationEvent | UserPreferenceNotificationEvent`

## Cases

| Type |
|  --- |
| [`UserActionNotificationEvent`](../../../doc/models/user-action-notification-event.md) |
| [`UserStatusNotificationEvent`](../../../doc/models/user-status-notification-event.md) |
| [`UserPreferenceNotificationEvent`](../../../doc/models/user-preference-notification-event.md) |

## UserActionNotificationEvent

### Initialization Code

#### Example

```ruby
value = UserActionNotificationEvent.new(
  user_action_notification_event_type: 'user.action'
)
```

## UserStatusNotificationEvent

### Initialization Code

#### Example

```ruby
value = UserStatusNotificationEvent.new(
  user_status_notification_event_type: 'user.status'
)
```

## UserPreferenceNotificationEvent

### Initialization Code

#### Example

```ruby
value = UserPreferenceNotificationEvent.new(
  user_preference_notification_event_type: 'user.preference'
)
```

