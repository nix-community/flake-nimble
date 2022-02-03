{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_7.flake = false;
  inputs.src-nesm-v0_4_7.type = "gitlab";
  inputs.src-nesm-v0_4_7.owner = "xomachine";
  inputs.src-nesm-v0_4_7.repo = "NESM";
  inputs.src-nesm-v0_4_7.ref = "refs/tags/v0.4.7";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}