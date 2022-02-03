{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v3_1.flake = false;
  inputs.src-nimler-v3_1.type = "github";
  inputs.src-nimler-v3_1.owner = "wltsmrz";
  inputs.src-nimler-v3_1.repo = "nimler";
  inputs.src-nimler-v3_1.ref = "refs/tags/v3.1";
  
  outputs = { self, nixpkgs, src-nimler-v3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}