{
  description = ''A hacky helper lib for authoring Nim packages with package-level visiblity'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-package_visible_types-master.flake = false;
  inputs.src-package_visible_types-master.type = "github";
  inputs.src-package_visible_types-master.owner = "zah";
  inputs.src-package_visible_types-master.repo = "nim-package-visible-types";
  inputs.src-package_visible_types-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-package_visible_types-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-package_visible_types-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-package_visible_types-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}