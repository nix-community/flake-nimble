{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-develop.flake = false;
  inputs.src-nimler-develop.type = "github";
  inputs.src-nimler-develop.owner = "wltsmrz";
  inputs.src-nimler-develop.repo = "nimler";
  inputs.src-nimler-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nimler-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}