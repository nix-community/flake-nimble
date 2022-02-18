{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbmp-v0_1_6.flake = false;
  inputs.src-nimbmp-v0_1_6.type = "github";
  inputs.src-nimbmp-v0_1_6.owner = "jangko";
  inputs.src-nimbmp-v0_1_6.repo = "nimBMP";
  inputs.src-nimbmp-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbmp-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbmp-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbmp-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}