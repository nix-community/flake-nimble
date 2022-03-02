{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-c2nim-master.flake = false;
  inputs.src-c2nim-master.type = "github";
  inputs.src-c2nim-master.owner = "nim-lang";
  inputs.src-c2nim-master.repo = "c2nim";
  inputs.src-c2nim-master.ref = "refs/heads/master";
  inputs.src-c2nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-c2nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c2nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-c2nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}