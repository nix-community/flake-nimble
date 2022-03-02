{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jsmn-0_1_4.flake = false;
  inputs.src-jsmn-0_1_4.type = "github";
  inputs.src-jsmn-0_1_4.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_1_4.repo = "jsmn.nim";
  inputs.src-jsmn-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-jsmn-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsmn-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsmn-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}