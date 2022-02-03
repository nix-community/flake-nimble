{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
  inputs.src-nimquery-v1_2_3.flake = false;
  inputs.src-nimquery-v1_2_3.type = "github";
  inputs.src-nimquery-v1_2_3.owner = "GULPF";
  inputs.src-nimquery-v1_2_3.repo = "nimquery";
  inputs.src-nimquery-v1_2_3.ref = "refs/tags/v1.2.3";
  
  outputs = { self, nixpkgs, src-nimquery-v1_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-v1_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimquery-v1_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}