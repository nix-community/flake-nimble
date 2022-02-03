{
  description = ''The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)'';
  inputs.src-iridium-master.flake = false;
  inputs.src-iridium-master.type = "github";
  inputs.src-iridium-master.owner = "KingDarBoja";
  inputs.src-iridium-master.repo = "Iridium";
  inputs.src-iridium-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-iridium-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iridium-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-iridium-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}