{
  description = ''Nim wrapper for the osdialog library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-osdialog-master.flake = false;
  inputs.src-osdialog-master.type = "github";
  inputs.src-osdialog-master.owner = "johnnovak";
  inputs.src-osdialog-master.repo = "nim-osdialog";
  inputs.src-osdialog-master.ref = "refs/heads/master";
  inputs.src-osdialog-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-osdialog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osdialog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-osdialog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}