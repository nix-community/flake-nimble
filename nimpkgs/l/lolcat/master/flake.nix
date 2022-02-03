{
  description = ''lolcat implementation in Nim'';
  inputs.src-lolcat-master.flake = false;
  inputs.src-lolcat-master.type = "github";
  inputs.src-lolcat-master.owner = "OHermesJunior";
  inputs.src-lolcat-master.repo = "lolcat.nim";
  inputs.src-lolcat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lolcat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lolcat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lolcat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}