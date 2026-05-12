
# System Notification Event Body

## Data Type

`SystemAlertNotificationEvent | SystemMaintenanceNotificationEvent | SystemPerformanceNotificationEvent`

## Cases

| Type |
|  --- |
| [`SystemAlertNotificationEvent`](../../../doc/models/system-alert-notification-event.md) |
| [`SystemMaintenanceNotificationEvent`](../../../doc/models/system-maintenance-notification-event.md) |
| [`SystemPerformanceNotificationEvent`](../../../doc/models/system-performance-notification-event.md) |

## SystemAlertNotificationEvent

### Initialization Code

#### Example

```ruby
value = SystemAlertNotificationEvent.new(
  system_alert_notification_event_type: 'system.alert'
)
```

## SystemMaintenanceNotificationEvent

### Initialization Code

#### Example

```ruby
value = SystemMaintenanceNotificationEvent.new(
  system_maintenance_notification_event_type: 'system.maintenance'
)
```

## SystemPerformanceNotificationEvent

### Initialization Code

#### Example

```ruby
value = SystemPerformanceNotificationEvent.new(
  system_performance_notification_event_type: 'system.performance'
)
```

