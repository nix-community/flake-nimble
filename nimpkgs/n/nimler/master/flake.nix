{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-master.flake = false;
  inputs.src-nimler-master.type = "github";
  inputs.src-nimler-master.owner = "wltsmrz";
  inputs.src-nimler-master.repo = "nimler";
  inputs.src-nimler-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimler-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}