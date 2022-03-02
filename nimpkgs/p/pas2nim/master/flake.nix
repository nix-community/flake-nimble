{
  description = ''pas2nim is a tool to translate Pascal code to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pas2nim-master.flake = false;
  inputs.src-pas2nim-master.type = "github";
  inputs.src-pas2nim-master.owner = "nim-lang";
  inputs.src-pas2nim-master.repo = "pas2nim";
  inputs.src-pas2nim-master.ref = "refs/heads/master";
  inputs.src-pas2nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pas2nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pas2nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pas2nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}