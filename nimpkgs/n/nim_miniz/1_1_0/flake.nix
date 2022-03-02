{
  description = ''Nim wrapper for miniz'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim_miniz-1_1_0.flake = false;
  inputs.src-nim_miniz-1_1_0.type = "github";
  inputs.src-nim_miniz-1_1_0.owner = "h3rald";
  inputs.src-nim_miniz-1_1_0.repo = "nim-miniz";
  inputs.src-nim_miniz-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-nim_miniz-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_miniz-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_miniz-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_miniz-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}