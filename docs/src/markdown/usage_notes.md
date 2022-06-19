# wuseman

* Reminders, example!

blablabla

* Step 1: Emerging the new kernel sources.
* Step 2: Setting the right symlink to the new kernel.
* Step 3: Moving to the new kernel's folder.
* Step 4: Adjusting the .config file for the options introduced to, or removed from the new kernel's configuration.
* Step 5: Building the kernel and the initramfs.
* Step 6: Updating the bootloader.
* Step 7: Removing or keeping the old kernel.

## Update the .config file

!!! note "Note"

This is a note 

!!! warning  "Warning"

This is a warning

!!! danger "Critical"

this is dangerous..

!!! check "Success"

this is good

!!! bug "Bug"

this is a bug in kernel ....

!!! example "Example"

this is an example

!!! quote "Quote"

this is quote

!!! cite "Cite"

this is a cite


this section .... comming soon .. 

---
title: MKDocs Tips
description: My Project webpages
path: docs/resources/
source: mkdocs.md
---

# MKDocs Tips n Tricks


---

## Deployment

If you have a heavy website, it helps to just reload what you have edited. The reason I do this is because markdown doesn't support `pymdown` formats so it's difficult to see what you're actually doing if you want fancy formats. So use the following command to **only** reload the page you are currently editing.

```bash
mkdocs serve --dirtyreload
```

??? todo
    I want to see if this works on a remote server. In theory, I should be able to run the following command:
    ```bash
    mkdocs serve --dirtyreload --dev-addr 3009
    ```

    Then I would be able to ssh into the server:

    ```bash
    ssh erc -L 3009:localhost:3009
    ```

    Or I could use the built-in tunneling with VSCode.

---

## Extensions

### [Admonition](https://squidfunk.github.io/mkdocs-material/extensions/admonition/)

This is great, it allows me to add little blocks of things I find interesting.

* Note
  * with title `!!! note "Title"`
  * without title `!!! note ""`

**Collapsible**

* `!!!` - open by default
* `???` - collapsible


##### Defaults



!!! note "Note Button"
    Can use `note` or `seealso`

!!! abstract "Abstract Button"
    Can use `abstract,summary,tldr`

!!! info "Info Button"
    Can use `info,todo`

!!! tip "Fire Button"
    `tip,hint,important`

!!! success "Checkmark Button"
    `success, check, done`

!!! question "Question Mark"
    `question,help,faq`

!!! warning "Warning Sign"
    `warning,caution,attention`

!!! failure "X Mark"
    `failure,fail,missing`

!!! danger "Danger sign"
    `danger, error`

!!! bug "Bug sign"
    `bug`

!!! example "Numbered List"
    `bug`

!!! quote "Quotation Marks"
    `quote, cite`


##### What Now?

!!! question
    How does this work if I want to design my own symbol?

??? todo
    Design my own symbol and add it to the research notebook!

---

### [CodeHilite](https://squidfunk.github.io/mkdocs-material/extensions/codehilite/)


Very simple, we have codeblocks with highlights. Using Python:

```python
import numpy as np
```

and using Bash:

```bash
echo "Times are changing"
```

#### Colocate Different bits of Code 

I can also collapse them!

=== "TensorFlow"
    ```python
    import tensorflow as tf
    ```

=== "PyTorch"
    ```python
    import torch
    ```

#### Line Numbers

We can also enable line numbers with the `linenums: true` extension.

```python linenums="1"
import numpy as np
import matplotlib.pyplot as plt
```

#### Highlight Line Numbers

```python linenums="1" hl_lines="3"
import numpy as np
import matplotlib.pyplot as plt
from scipy import *              # Don't do this!!
```

---

## Meta Data

```
---
title: PyTest Tricks
description: The deep learning python stack
authors:
    - J. Emmanuel Johnson
path: docs/snippets/testing
source: pytest.md
---
```
