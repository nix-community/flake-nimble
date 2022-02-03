{
  description = ''Connection Test for Nim Web Applications'';
  inputs.src-netTest-main.flake = false;
  inputs.src-netTest-main.type = "github";
  inputs.src-netTest-main.owner = "blmvxer";
  inputs.src-netTest-main.repo = "netTest";
  inputs.src-netTest-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-netTest-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netTest-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-netTest-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}