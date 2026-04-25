components {
  id: "element"
  component: "/_scripts/MiniGame/element.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"coinsPowerUp\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/_miniGame/_elements.atlas\"\n"
  "}\n"
  ""
  scale {
    x: 0.3
    y: 0.3
  }
}
embedded_components {
  id: "coinPowerUpCollisionObject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"CoinPowerUp\"\n"
  "mask: \"Player\"\n"
  "mask: \"Map\"\n"
  "mask: \"Tree\"\n"
  "mask: \"Rock\"\n"
  "mask: \"Coin\"\n"
  "mask: \"KnowledgeItem\"\n"
  "mask: \"KnowledgePowerUp\"\n"
  "mask: \"CoinPowerUp\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 9.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"powerUpHitbox\"\n"
  "  }\n"
  "  data: 28.657576\n"
  "  data: 13.571239\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
