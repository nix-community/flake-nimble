{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';
  inputs.src-iputils-v0_1_0.flake = false;
  inputs.src-iputils-v0_1_0.type = "github";
  inputs.src-iputils-v0_1_0.owner = "rockcavera";
  inputs.src-iputils-v0_1_0.repo = "nim-iputils";
  inputs.src-iputils-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-iputils-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iputils-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-iputils-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}