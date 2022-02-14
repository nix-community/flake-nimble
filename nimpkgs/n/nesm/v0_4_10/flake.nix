{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_10.flake = false;
  inputs.src-nesm-v0_4_10.type = "gitlab";
  inputs.src-nesm-v0_4_10.owner = "xomachine";
  inputs.src-nesm-v0_4_10.repo = "NESM";
  inputs.src-nesm-v0_4_10.ref = "refs/tags/v0.4.10";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}