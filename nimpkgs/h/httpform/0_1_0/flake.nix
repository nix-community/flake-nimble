{
  description = ''Http request form parser'';
  inputs.src-httpform-0_1_0.flake = false;
  inputs.src-httpform-0_1_0.type = "github";
  inputs.src-httpform-0_1_0.owner = "tulayang";
  inputs.src-httpform-0_1_0.repo = "httpform";
  inputs.src-httpform-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-httpform-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpform-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpform-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}