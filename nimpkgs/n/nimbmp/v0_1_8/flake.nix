{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimBMP-v0_1_8.flake = false;
  inputs.src-nimBMP-v0_1_8.type = "github";
  inputs.src-nimBMP-v0_1_8.owner = "jangko";
  inputs.src-nimBMP-v0_1_8.repo = "nimBMP";
  inputs.src-nimBMP-v0_1_8.ref = "refs/tags/v0.1.8";
  inputs.src-nimBMP-v0_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimBMP-v0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimBMP-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimBMP-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}