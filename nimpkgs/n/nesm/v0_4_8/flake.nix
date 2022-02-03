{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_8.flake = false;
  inputs.src-nesm-v0_4_8.type = "gitlab";
  inputs.src-nesm-v0_4_8.owner = "xomachine";
  inputs.src-nesm-v0_4_8.repo = "NESM";
  inputs.src-nesm-v0_4_8.ref = "refs/tags/v0.4.8";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}