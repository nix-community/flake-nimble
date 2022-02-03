{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v4_4.flake = false;
  inputs.src-nimler-v4_4.type = "github";
  inputs.src-nimler-v4_4.owner = "wltsmrz";
  inputs.src-nimler-v4_4.repo = "nimler";
  inputs.src-nimler-v4_4.ref = "refs/tags/v4.4";
  
  outputs = { self, nixpkgs, src-nimler-v4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}