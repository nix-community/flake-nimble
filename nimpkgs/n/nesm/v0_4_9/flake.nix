{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_9.flake = false;
  inputs.src-nesm-v0_4_9.type = "gitlab";
  inputs.src-nesm-v0_4_9.owner = "xomachine";
  inputs.src-nesm-v0_4_9.repo = "NESM";
  inputs.src-nesm-v0_4_9.ref = "refs/tags/v0.4.9";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}