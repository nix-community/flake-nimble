{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-0_7.flake = false;
  inputs.src-guildenstern-0_7.type = "github";
  inputs.src-guildenstern-0_7.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_7.repo = "GuildenStern";
  inputs.src-guildenstern-0_7.ref = "refs/tags/0.7";
  
  
  inputs."weave".type = "github";
  inputs."weave".owner = "riinr";
  inputs."weave".repo = "flake-nimble";
  inputs."weave".ref = "flake-pinning";
  inputs."weave".dir = "nimpkgs/w/weave";

  outputs = { self, nixpkgs, src-guildenstern-0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}