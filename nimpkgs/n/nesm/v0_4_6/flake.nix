{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_6.flake = false;
  inputs.src-nesm-v0_4_6.type = "gitlab";
  inputs.src-nesm-v0_4_6.owner = "xomachine";
  inputs.src-nesm-v0_4_6.repo = "NESM";
  inputs.src-nesm-v0_4_6.ref = "refs/tags/v0.4.6";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}