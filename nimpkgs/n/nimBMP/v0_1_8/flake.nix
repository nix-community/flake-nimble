{
  description = ''BMP encoder and decoder'';
  inputs.src-nimBMP-v0_1_8.flake = false;
  inputs.src-nimBMP-v0_1_8.type = "github";
  inputs.src-nimBMP-v0_1_8.owner = "jangko";
  inputs.src-nimBMP-v0_1_8.repo = "nimBMP";
  inputs.src-nimBMP-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, src-nimBMP-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimBMP-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimBMP-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}