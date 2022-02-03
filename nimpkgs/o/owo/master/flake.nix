{
  description = ''OwO text convewtew fow Nim'';
  inputs.src-owo-master.flake = false;
  inputs.src-owo-master.type = "github";
  inputs.src-owo-master.owner = "lmariscal";
  inputs.src-owo-master.repo = "owo";
  inputs.src-owo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-owo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-owo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-owo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}