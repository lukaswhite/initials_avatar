# Initials Avatar

A very simple Flutter widget for displaying an avatar with a user's initials.

Out of the box, it:

 - Extracts the initials from the provided name
 - Sizes the text appropriately
 - Creates a consistent but random background colour
 - Creates a complementary text colour  

## Usage

At its simplest, simply provide the user's name:

```dart
InitialsAvatar(name: 'Joe Bloggs')
```

## Customising

To modify the size (radius):

```dart
InitialsAvatar(name: 'Jane Doe', size: 30.0,),
```

Provide your own background colour:

```dart
InitialsAvatar(name: 'Jane Doe', backgroundColor: Colors.pinkAccent,),
```

Provide your own text colour:

```dart
InitialsAvatar(name: 'Jane Doe', textColor: Colors.white,),
```

The colour of the text is derived from the background colour, by lightening it. You can change the degree to which it does so using the `textLightenFactor` parameter, which is a value between 0 and 100 (which will always be white).

For example:

```dart
InitialsAvatar(name: 'Jane Doe', textLightenFactor: 90,),
```

The background colour is generated from a built-in selection of colours, but you're free to provide your own:

```dart
InitialsAvatar(name: 'Jane Doe', colors: [
    Colors.amber,
    Colors.cyan,
    Colors.brown,
    Colors.pinkAccent
],),
```