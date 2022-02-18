{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbmp-v0_1_8.flake = false;
  inputs.src-nimbmp-v0_1_8.type = "github";
  inputs.src-nimbmp-v0_1_8.owner = "jangko";
  inputs.src-nimbmp-v0_1_8.repo = "nimBMP";
  inputs.src-nimbmp-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbmp-v0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbmp-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbmp-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}