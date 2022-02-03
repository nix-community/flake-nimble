{
  description = ''A nice and icy ZSH prompt in Nim'';
  inputs.src-nicy-v2_4_2.flake = false;
  inputs.src-nicy-v2_4_2.type = "github";
  inputs.src-nicy-v2_4_2.owner = "icyphox";
  inputs.src-nicy-v2_4_2.repo = "nicy";
  inputs.src-nicy-v2_4_2.ref = "refs/tags/v2.4.2";
  
  outputs = { self, nixpkgs, src-nicy-v2_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nicy-v2_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nicy-v2_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}