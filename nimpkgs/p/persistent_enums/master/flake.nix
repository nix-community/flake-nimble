{
  description = ''Define enums which values preserve their binary representation upon inserting or reordering'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-persistent_enums-master.flake = false;
  inputs.src-persistent_enums-master.type = "github";
  inputs.src-persistent_enums-master.owner = "yglukhov";
  inputs.src-persistent_enums-master.repo = "persistent_enums";
  inputs.src-persistent_enums-master.ref = "refs/heads/master";
  inputs.src-persistent_enums-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-persistent_enums-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-persistent_enums-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-persistent_enums-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}