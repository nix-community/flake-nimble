{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_4.flake = false;
  inputs.src-nesm-v0_4_4.type = "gitlab";
  inputs.src-nesm-v0_4_4.owner = "xomachine";
  inputs.src-nesm-v0_4_4.repo = "NESM";
  inputs.src-nesm-v0_4_4.ref = "refs/tags/v0.4.4";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}