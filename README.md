# Notification Manager
Notification Manager is a simple all-in-one system for starting, storing, and comparing ActiveRecord objects using Resque and resque-scheduler. It also features and supports rspec. All tests in this gem are written with rspec. 

While Resque itself is pretty simple to implement, this packages Resque, resque-scheduler together with some simple common sense logic for comparing objects. I wrote this to simplify some functionality in my own applications, so some of it is application-specific. However, I tried to construct this gem in a way that would make customization easy. ___I welcome anyone and everyone that happens to find this useful to add your own customizations to it. All you need to do is fork the repo, make your changes, and create a Pull Request.___ Understandably, I would like any customizations made to have matching specs.

## Run-down of how NotificationManager works:
I don't like complicated code. I don't think anyone does. Therefore, NotificationManager is written with a 'no nonsense' style. First, you must create a Notification object using `NotificationManager::Manager.notification()` like so:

```
NotificationManager::Manager.notification(owner, change_type, context, target)
```

### Properties:

`owner` - string. This value is arbitrary and is generally an email address, though you can use a `User` object if you create a custom Notification model (or modify the existing model). `owner` is the entity making the change to `target`

`change_type` - string. This value has to be one of the predefined change types located in `config/change_types.yaml`. You can add your own custom change types very easily as long as each change's values are defined in a dictionary of dictionaries (I'll go over this more soon.)

`context` - string. This value is also arbitrary and can be anything you want. It is intended to be used for an id of some Model. It's mostly application specific so that's about as specific as it gets. You can also pass it an empty string - context is not a required argument.

`target` - string. This value is arbitrary and similar to `owner`: Can be whatever you want, but generally an email address or some sort of identifier. `target` is the entity on the receiving end of the change made by `owner`.
