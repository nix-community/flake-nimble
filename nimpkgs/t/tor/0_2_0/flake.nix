{
  description = ''Tor helper library'';
  inputs.src-tor-0_2_0.flake = false;
  inputs.src-tor-0_2_0.type = "github";
  inputs.src-tor-0_2_0.owner = "FedericoCeratto";
  inputs.src-tor-0_2_0.repo = "nim-tor";
  inputs.src-tor-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-tor-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tor-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tor-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}