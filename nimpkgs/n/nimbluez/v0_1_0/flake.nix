{
  description = ''Nim modules for access to system Bluetooth resources.'';
  inputs.src-nimbluez-v0_1_0.flake = false;
  inputs.src-nimbluez-v0_1_0.type = "github";
  inputs.src-nimbluez-v0_1_0.owner = "Electric-Blue";
  inputs.src-nimbluez-v0_1_0.repo = "NimBluez";
  inputs.src-nimbluez-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimbluez-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbluez-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbluez-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}