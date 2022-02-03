{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';
  inputs.src-deepspeech-master.flake = false;
  inputs.src-deepspeech-master.type = "gitlab";
  inputs.src-deepspeech-master.owner = "eagledot";
  inputs.src-deepspeech-master.repo = "nim-deepspeech";
  inputs.src-deepspeech-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-deepspeech-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deepspeech-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-deepspeech-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}