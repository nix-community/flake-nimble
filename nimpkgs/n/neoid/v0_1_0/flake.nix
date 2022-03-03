{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-neoid-v0_1_0.flake = false;
  inputs.src-neoid-v0_1_0.type = "github";
  inputs.src-neoid-v0_1_0.owner = "theAkito";
  inputs.src-neoid-v0_1_0.repo = "nim-neoid";
  inputs.src-neoid-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-neoid-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-neoid-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neoid-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neoid-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}