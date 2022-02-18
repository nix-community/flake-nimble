{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimBMP-v0_1_7.flake = false;
  inputs.src-nimBMP-v0_1_7.type = "github";
  inputs.src-nimBMP-v0_1_7.owner = "jangko";
  inputs.src-nimBMP-v0_1_7.repo = "nimBMP";
  inputs.src-nimBMP-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimBMP-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimBMP-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimBMP-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}