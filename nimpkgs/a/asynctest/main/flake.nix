{
  description = ''Test asynchronous code'';
  inputs.src-asynctest-main.flake = false;
  inputs.src-asynctest-main.type = "github";
  inputs.src-asynctest-main.owner = "markspanbroek";
  inputs.src-asynctest-main.repo = "asynctest";
  inputs.src-asynctest-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-asynctest-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asynctest-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asynctest-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}