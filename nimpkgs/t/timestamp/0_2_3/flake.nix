{
  description = ''An alternative time library'';
  inputs.src-timestamp-0_2_3.flake = false;
  inputs.src-timestamp-0_2_3.type = "github";
  inputs.src-timestamp-0_2_3.owner = "jackhftang";
  inputs.src-timestamp-0_2_3.repo = "timestamp.nim";
  inputs.src-timestamp-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-timestamp-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timestamp-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timestamp-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}