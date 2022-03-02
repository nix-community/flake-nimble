{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-c2nim-0_9_18.flake = false;
  inputs.src-c2nim-0_9_18.type = "github";
  inputs.src-c2nim-0_9_18.owner = "nim-lang";
  inputs.src-c2nim-0_9_18.repo = "c2nim";
  inputs.src-c2nim-0_9_18.ref = "refs/tags/0.9.18";
  inputs.src-c2nim-0_9_18.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-c2nim-0_9_18, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c2nim-0_9_18;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-c2nim-0_9_18"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}