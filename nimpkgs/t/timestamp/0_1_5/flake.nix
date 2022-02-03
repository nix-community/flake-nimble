{
  description = ''An alternative time library'';
  inputs.src-timestamp-0_1_5.flake = false;
  inputs.src-timestamp-0_1_5.type = "github";
  inputs.src-timestamp-0_1_5.owner = "jackhftang";
  inputs.src-timestamp-0_1_5.repo = "timestamp.nim";
  inputs.src-timestamp-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-timestamp-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timestamp-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timestamp-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}