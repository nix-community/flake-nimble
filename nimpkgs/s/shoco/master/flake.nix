{
  description = ''A fast compressor for short strings'';
  inputs.src-shoco-master.flake = false;
  inputs.src-shoco-master.type = "github";
  inputs.src-shoco-master.owner = "onionhammer";
  inputs.src-shoco-master.repo = "shoconim";
  inputs.src-shoco-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shoco-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shoco-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shoco-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}