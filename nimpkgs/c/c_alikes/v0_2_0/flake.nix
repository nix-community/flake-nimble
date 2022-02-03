{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';
  inputs.src-c_alikes-v0_2_0.flake = false;
  inputs.src-c_alikes-v0_2_0.type = "github";
  inputs.src-c_alikes-v0_2_0.owner = "ReneSac";
  inputs.src-c_alikes-v0_2_0.repo = "c_alikes";
  inputs.src-c_alikes-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-c_alikes-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c_alikes-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-c_alikes-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}