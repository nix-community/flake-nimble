{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_4_5.flake = false;
  inputs.src-nesm-v0_4_5.type = "gitlab";
  inputs.src-nesm-v0_4_5.owner = "xomachine";
  inputs.src-nesm-v0_4_5.repo = "NESM";
  inputs.src-nesm-v0_4_5.ref = "refs/tags/v0.4.5";
  
  outputs = { self, nixpkgs, src-nesm-v0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}