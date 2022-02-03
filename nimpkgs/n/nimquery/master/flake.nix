{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
  inputs.src-nimquery-master.flake = false;
  inputs.src-nimquery-master.type = "github";
  inputs.src-nimquery-master.owner = "GULPF";
  inputs.src-nimquery-master.repo = "nimquery";
  inputs.src-nimquery-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimquery-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimquery-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}