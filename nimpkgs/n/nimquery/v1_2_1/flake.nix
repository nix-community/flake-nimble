{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
  inputs.src-nimquery-v1_2_1.flake = false;
  inputs.src-nimquery-v1_2_1.type = "github";
  inputs.src-nimquery-v1_2_1.owner = "GULPF";
  inputs.src-nimquery-v1_2_1.repo = "nimquery";
  inputs.src-nimquery-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, src-nimquery-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimquery-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}