{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
  inputs.src-nimquery-v1_1_2.flake = false;
  inputs.src-nimquery-v1_1_2.type = "github";
  inputs.src-nimquery-v1_1_2.owner = "GULPF";
  inputs.src-nimquery-v1_1_2.repo = "nimquery";
  inputs.src-nimquery-v1_1_2.ref = "refs/tags/v1.1.2";
  
  outputs = { self, nixpkgs, src-nimquery-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimquery-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}