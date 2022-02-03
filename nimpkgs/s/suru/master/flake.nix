{
  description = ''A tqdm-style progress bar in Nim'';
  inputs.src-suru-master.flake = false;
  inputs.src-suru-master.type = "github";
  inputs.src-suru-master.owner = "de-odex";
  inputs.src-suru-master.repo = "suru";
  inputs.src-suru-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-suru-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suru-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suru-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}