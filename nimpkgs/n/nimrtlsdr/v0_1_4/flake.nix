{
  description = ''A Nim wrapper for librtlsdr'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimrtlsdr-v0_1_4.flake = false;
  inputs.src-nimrtlsdr-v0_1_4.type = "github";
  inputs.src-nimrtlsdr-v0_1_4.owner = "jpoirier";
  inputs.src-nimrtlsdr-v0_1_4.repo = "nimrtlsdr";
  inputs.src-nimrtlsdr-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-nimrtlsdr-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrtlsdr-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrtlsdr-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrtlsdr-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}