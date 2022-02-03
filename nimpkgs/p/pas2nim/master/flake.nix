{
  description = ''pas2nim is a tool to translate Pascal code to Nim.'';
  inputs.src-pas2nim-master.flake = false;
  inputs.src-pas2nim-master.type = "github";
  inputs.src-pas2nim-master.owner = "nim-lang";
  inputs.src-pas2nim-master.repo = "pas2nim";
  inputs.src-pas2nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pas2nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pas2nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pas2nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}