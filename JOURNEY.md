# Journey to make a new detail template


## get template

First take one from github

```bash
git clone https://github.com/4d-for-ios/form-detail-SimpleList
```

## create your own git repo

Remove original git data and add yours

```bash
cd form-detail-SimpleList
rm -Rf .git
git init
git add .

### share it?
If your template could be named `MyTemplate` and you want to share it to github, you could configure it now
```bash
git remote add origin https://github.com/mesopelagique/MyTemplate
```
or 
```bash
git remote add origin https://github.com/mesopelagique/form-detail-MyTemplate
```

## edit template

### rename original template name

First use a bash command or your favorite text editor to replace original template name with new one 
- `SimpleList` by `MyTemplate`
- `Simple List` by `My Template`

### edit template

Edit the storyboard, the `template.svg` according to documentation

### manifest

Simplify the manifest (see doc), for instance if you have two fields

```json
{
  "type": "detailform",
  "name": "My Template",
  "fields": {
    "count": 2
  },
  "tags": {
    "___DETAILFORMTYPE___": "Bare"
  }
}
```
##### remove  "___DETAILFORMTYPE___": "Bare" ?

you could remove it but edit `Sources/Forms/Tables/___TABLE___/___TABLE___DetailsForm.swift` and replace `___DETAILFORMTYPE___` by `Bare``

### visualisation

You could make an animated gif `template.gif` but you could also remove it and remove it also from `README.md`

```html
<p align="center"><img src="https://github.com/4d-for-ios/4d-for-ios-form-detail-SwiftUISample/blob/master/template.gif" alt="SwiftUISample" height="auto" width="300"></p>
```

## share it

You could commit now, and push it to github

Then you could propose it by adding it to https://github.com/4d-for-ios/gallery/blob/master/4d-for-ios-form-detail.txt
