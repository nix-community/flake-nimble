{
  description = ''Test asynchronous code'';
  inputs.src-asynctest-0_2_1.flake = false;
  inputs.src-asynctest-0_2_1.type = "github";
  inputs.src-asynctest-0_2_1.owner = "markspanbroek";
  inputs.src-asynctest-0_2_1.repo = "asynctest";
  inputs.src-asynctest-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-asynctest-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asynctest-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asynctest-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}