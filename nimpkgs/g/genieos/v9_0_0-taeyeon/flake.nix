{
  description = ''Too awesome procs to be included in nimrod.os module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-genieos-v9_0_0-taeyeon.flake = false;
  inputs.src-genieos-v9_0_0-taeyeon.type = "github";
  inputs.src-genieos-v9_0_0-taeyeon.owner = "Araq";
  inputs.src-genieos-v9_0_0-taeyeon.repo = "genieos";
  inputs.src-genieos-v9_0_0-taeyeon.ref = "refs/tags/v9.0.0-taeyeon";
  inputs.src-genieos-v9_0_0-taeyeon.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genieos-v9_0_0-taeyeon, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-v9_0_0-taeyeon;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_0_0-taeyeon"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}