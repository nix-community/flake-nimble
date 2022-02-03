{
  description = ''Nim Espeak NG wrapper, for super easy Voice and Text-To-Speech'';
  inputs.src-espeak-master.flake = false;
  inputs.src-espeak-master.type = "github";
  inputs.src-espeak-master.owner = "juancarlospaco";
  inputs.src-espeak-master.repo = "nim-espeak";
  inputs.src-espeak-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-espeak-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-espeak-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-espeak-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}