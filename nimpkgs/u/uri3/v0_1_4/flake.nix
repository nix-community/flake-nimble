{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uri3-v0_1_4.flake = false;
  inputs.src-uri3-v0_1_4.type = "github";
  inputs.src-uri3-v0_1_4.owner = "zendbit";
  inputs.src-uri3-v0_1_4.repo = "nim.uri3";
  inputs.src-uri3-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-uri3-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uri3-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri3-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uri3-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}